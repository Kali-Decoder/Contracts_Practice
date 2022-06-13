const Contract1 =  artifacts.require("Contract1");
const Contract2 =  artifacts.require("Contract2");
const Contract3 =  artifacts.require("Contract3");

let contract1Instance;
let contract2Instance;

contract("Testing smart contracts ",(accounts)=>{
    beforeEach(async()=>{
        contract2Instance= await Contract2.new();
        contract1Instance= await Contract1.new(contract2Instance.address)
    });
    it("Should get instance",async()=>{
        let address = await contract2Instance.createNewContract3();
        address= address.logs[0].args._newContract;
        let contract3Instance = await Contract3.at(address);
        let num = await contract3Instance.num();
        assert.equal(num,0);
        await contract3Instance.storeNum(10);
         num = await contract3Instance.num();
        assert.equal(num,10);
    })
})