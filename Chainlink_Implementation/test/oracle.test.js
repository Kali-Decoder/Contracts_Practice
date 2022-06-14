const DataFeed = artifacts.require("PriceConsumerV3");

let DataFeedObject;
contract("Testing contract",(Accounts)=>{
    beforeEach(async ()=>{
        DataFeedObject= await DataFeed.deployed();
    });
    it("Should deploy contract",async ()=>{
        // console.log(DataFeedObject);
    });

    it("Should get eth price latest",async ()=>{
        let x= await DataFeedObject.getEthLatestPrice();
        console.log(x);
    });

    it("Should get latest timestamp",async()=>{
        let x = await DataFeedObject.getLatestPriceTimestamp();
        console.log(x);
    })

});
