## Modules

**`admin/`** - sign and verify messages
<br />
**`build/`** - provide customized methods to build project and the final build
<br />
**`cmd/`** - start the main router. Code that is related to router (functions, flags)
<br />
**`common/`** - common code for real. Almost all imports are global modules. Not related to specific project functionality
<br />
**`contracts/`** - all necessary smart contracts
<br />
**`internal/`** - idk. Maybe smth usefull in `internal/swapapi`
<br />
**`leveldb/`** - Leveldb stuff (key -> value DB). Wrapper of goleveldb
<br />
**`log/`** - obviously for logs
<br />
**`mongodb/`** - MongoDB stuff. wrapper of mongo-go-driver that defines the collections and CRUD apis on them. DB init from `smd/swaprouter/main.go -> func swaprouter`
<br />
**`mpc/`** - is a client of mpc server, doing the sign and accept tasks
<br />
**`params/`** - provides common version info and config items, config types (like MPCConfig, OnchainConfig, RouterConfig, etc)
<br />
**`router/`** - inits bridges and loads onchain configs
<br />
**`rpc/`**:
<br />

- `client/` - provides methods to do http GET / POST request
  <br />
- `restapi/` - provides RESTful RPC service
  <br />
- `rpcapi/` - provides JSON RPC service
  <br />
- `server/` - provides JSON/RESTful RPC service
  <br />

**`tokens/`**: - defines the common interfaces and supported bridges in sub directories
<br />

- `eth/` - implements the bridge interfaces to support routering
  <br />

**`tools/`** - something like `common/`
<br />
**`types/`** - defines the eth-like core types (Transaction, etc) and RPC result types
<br />
**`worker/`** - includes all the tasks and jobs to process router swaps. More info in`worker/doc.go`
<br />

---

### Usefull

#### fees

**`tokens/base.go`**:
<br />
`func CalcSwapValue`

#### swap

**`tokens/eth/builderc20swaptx.go`**:
<br />
`buildERC20SwapTxInput` -> `func buildERC20SwapTradeTxInput` or `func buildERC20SwapoutTxInput`

**`worker/swap.go`**:
<br />
`func processRouterSwap` -> `func dispatchSwapTask` -> ?
