const VaultFactory = artifacts.require("VaultFactory");
const Vault= artifacts.require("Vault");
let vaultFactory;
let vaultAddress;
let vaultInstance;
contract("Testing Vault Contract ...",(Accounts)=>{
    beforeEach(async ()=>{
        vaultFactory= await VaultFactory.new();
        // vaultInstance= await Vault.new(vaultFactory.address)
        vaultAddress= await vaultFactory.createInstance(1234);
        vaultInstance= await Vault.new(1234);

        
    });
    it("Should give address of contract ", async ()=>{
       let x= await vaultInstance.locked();
       await vaultInstance.unLock(1234);
        x= await vaultInstance.locked();

       console.log(x);
    })
})