const VaultFactory = artifacts.require("VaultFactory");
const Vault= artifacts.require("Vault");
let vaultContract;
let vaultAddress;
let vaultInstance;
contract("Testing Vault Contract ...",(Accounts)=>{
    beforeEach(async ()=>{
        vaultContract= await VaultFactory.deployed();
        vaultAddress= await vaultContract.createInstance(" 0000000000000000000000000000000000000000000000000000006d6168616d");
        // vaultInstance= await Vault.at(vaultAddress);

        
    });
    it("Should give address of contract ", async ()=>{
        console.log(vaultAddress);
    })
})