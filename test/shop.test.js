const Factory = artifacts.require("Factory");
const Shop = artifacts.require("Shop");

let factoryInstance;
let shopInstance;

contract("Testing contract",(Accounts)=>{
    beforeEach(async ()=>{
        factoryInstance= await Factory.new();
        shopInstance= await Shop.new();
    });
    it("Should give factory instance",async ()=>{
        let x= await shopInstance.isSold();
        console.log(x)
    })
})