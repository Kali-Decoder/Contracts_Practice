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
    it("Sjpuld get instance",async()=>{
        let address = await contract1Instance.creation();
        console.log(address);
    })
})