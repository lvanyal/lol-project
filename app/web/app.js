import LolContract from "./abi/LolContract.json" assert { type: "json" };
import config from "./config.json" assert { type: "json" };

let provider;
let contract;
let bridge;
const confirmations = 7;

// This function will be called from Flutter when it prepares the JS-interop.
window._initJsInterop = function (_bridge) {
  bridge = _bridge;
  bridge.sendFromDart = () => console.log("from dart");
  bridge.requestAccount = requestAccount;
  bridge.fetchAll = fetchAll;
  bridge.mintMeme = mintMeme;
  bridge.checkConnection = checkConnection;
};

window.onload = function (e) {
  if (window.ethereum != null) {
    const accountListenerCount =
      window.ethereum.listenerCount("accountsChanged");
    if (accountListenerCount == 0) {
      window.ethereum.on("accountsChanged", handleAccountsChanged);
    }
    const chainListenerCount = window.ethereum.listenerCount("chainChanged");
    if (chainListenerCount == 0) {
      window.ethereum.on("chainChanged", handleChainChanged);
    }
  }
};

const handleAccountsChanged = async (accounts) => {
  if (accounts.length > 0) {
    await setupContract();
    const chainId = parseInt(window.ethereum.networkVersion);
    bridge.onAccountChanged(accounts[0]);
    bridge.onChainChanged(chainId);
  } else {
    bridge.onAccountDisconnected();
  }
};

const handleChainChanged = (chainId) => {
  window.location.reload();
};

async function requestAccount() {
  if (window.ethereum == null) {
    bridge.onMetamaskMissing();
    bridge.onAccountDisconnected();
  } else {
    try {
      await window.ethereum.request({
        method: "eth_requestAccounts",
      });
      await checkConnection();
    } catch (error) {
      console.log(`errrr ${error}`);
      bridge.onAccountDisconnected();
    }
  }
}

async function checkConnection() {
  if (window.ethereum != null) {
    const accounts = await window.ethereum.request({ method: "eth_accounts" });
    if (accounts.length > 0) {
      await setupContract();
      bridge.onAccountChanged(accounts[0]);
      bridge.onChainChanged(parseInt(window.ethereum.networkVersion));
    } else {
      bridge.onAccountDisconnected();
    }
  } else {
    bridge.onAccountDisconnected();
  }
}

async function setupContract() {
  provider = new ethers.BrowserProvider(window.ethereum, "any");
  const address = config[window.ethereum.networkVersion];
  if (address) {
    contract = new ethers.Contract(
      address,
      LolContract,
      await provider.getSigner()
    );
  }
}

async function fetchAll() {
  try {
    const address = config[window.ethereum.networkVersion];

    const readProvider = new ethers.JsonRpcProvider("http://127.0.0.1:8545/");
    const readContract = new ethers.Contract(
      address,
      LolContract,
      readProvider
    );
    let totalNumber = await readContract.totalSupply();
    bridge.onTotalMemeCount(parseInt(totalNumber));

    for (let i = 0; i < totalNumber; i++) {
      let memeId = await readContract.tokenByIndex(i);
      let memeUri = await readContract.tokenURI(memeId);
      console.log("====> contract: " + memeUri);

      bridge.onMemeFetched(parseInt(totalNumber), { id: memeId, uri: memeUri });
    }
  } catch (error) {
    console.error(error);
    bridge.onGetAllFailed(safeStringify(error));
  }
}

async function mintMeme(uri) {
  try {
    const tx = await contract.mintMeme(uri);
    bridge.onMemeMintSent();
    const rc = await tx.wait(confirmations);
    const logs = await contract.queryFilter(
      "MemeMinted",
      rc.blockNumber,
      rc.blockNumber
    );
    const tokenId = parseInt(logs[0].topics[1], 16).toString();
    const attachedValue = logs[0].topics[2];
    console.log(safeStringify(attachedValue));
    bridge.onMintTxConfirmed(tokenId, attachedValue);
  } catch (error) {
    console.error(error);
    bridge.onMintTxFailed(safeStringify(error));
  }
}

function safeStringify(object) {
  return JSON.stringify(object, (key, value) =>
    typeof value === "bigint" ? value.toString() : value
  );
}
