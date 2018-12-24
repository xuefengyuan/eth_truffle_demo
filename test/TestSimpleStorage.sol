pragma solidity >=0.4.24 <0.6.0;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleStorage.sol";

//合约名字要Test开头
contract TestSimpleStorage {

    //测试函数，小写test开头
    function testSet() public {
        SimpleStorage ss = SimpleStorage(DeployedAddresses.SimpleStorage());

        ss.set(10);

        uint res = ss.get();

        Assert.equal(res, 10, "res should be 1000");
    }
}
