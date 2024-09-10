const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("DappCreationModule", (m) => {
  
  const Data = m.contract("SetGetData") ;

  return { Data };
});
