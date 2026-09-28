import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("SimpleStorageModule", (m) => {
  const simpleStorage = m.contract("SimpleStorage");

  m.call(simpleStorage, "set", [42n]);

  return { simpleStorage };
});
