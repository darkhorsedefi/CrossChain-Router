# CrossChain-Router API

[JSON RPC API Reference](#json-rpc-api-reference)

[RESTful API Reference](#restful-api-reference)

## JSON RPC API Reference

[swap.RegisterRouterSwap](#swapregisterrouterswap)  
[swap.GetRouterSwap](#swapgetrouterswap)  
[swap.GetRouterSwapHistory](#swapgetrouterswaphistory)  
[swap.GetVersionInfo](#swapgetversioninfo)  
[swap.GetServerInfo](#swapgetserverinfo)  
[swap.GetAllChainIDs](#swapgetallchainids)  
[swap.GetAllTokenIDs](#swapgetalltokenids)  
[swap.GetAllMultichainTokens](#swapgetallmultichaintokens)  
[swap.GetChainConfig](#swapgetchainconfig)  
[swap.GetTokenConfig](#swapgettokenconfig)  
[swap.GetSwapConfig](#swapgetswapconfig)  

### swap.RegisterRouterSwap

Register a replacement transaction

##### parameter：
```json
[{"chainid":"chainChainID", "txid":"Transaction hash", "logindex":"Log index"}]
```
Among them, logindex is an optional parameter, which corresponds to the log index, and the default value is 0.
If the logindex is 0, all transactions in this transaction are registered.

##### Return value：
```text
`Success` is returned for success, and an error is returned for failure.
```

### swap.GetRouterSwap

Query replacement status

##### parameter：
```json
[{"chainid":"链ChainID", "txid":"交易哈希", "logindex":"日志下标"}]
```
Among them, logindex is an optional parameter, which corresponds to the log index, and the default value is 0. 
If the logindex is 0, the first replacement in this transaction will be automatically queried.

##### Return value：
```text
Successfully returned the replacement status, and failed to return an error.
```

### swap.GetRouterSwapHistory

Query replacement history, support paging, addess is the account address

##### parameter：
```json
[{"chainid":"链ChainID", "address":"账户地址", "offset":"偏移量", "limit":"数量限制", "status":"8,9"}]
```
Where status is an optional parameter, if specified, it can be queried according to the status. 
Among them, offset and limit are optional parameters, and the default values are 0 and 20, respectively. 
If limit is negative, it means that the results are taken after sorting in reverse chronological order.

##### Return value：
```text
The replacement history is returned successfully, and an error is returned for failure.
```

### swap.GetVersionInfo

##### parameter：
```text
none
```

##### Return value：
```text
Return version number information
```

### swap.GetServerInfo

##### parameter：
```text
none
```

##### Return value：
```text
Get service information
```

### swap.GetAllChainIDs

##### parameter：
```text
none
```

##### Return value：
```text
Get all chainids
```

### swap.GetAllTokenIDs

##### parameter：
```text
none
```

##### Return value：
```text
Get all tokenids
```

### swap.GetAllMultichainTokens

##### parameter：：
```json
["tokenID"]
```

##### Return value：
```text
Get specified tokenID of all multichain token
```

### swap.GetChainConfig

##### parameter：
```json
["chainChainID"]
```

##### Return value：
```text
Get the chain configuration of the specified chainId
```

### swap.GetTokenConfig

##### parameter：
```json
[{"chainid":"链ChainID", "address":"account address"}]
```

##### Return value：
```text
Get the token configuration of the specified chainId and token address
```

### swap.GetSwapConfig

##### parameter：：
```json
[{"tokenid": "tokenID", "chainid":"目标链ChainID"}]
```

##### Return value：
```text
Obtain the swap configuration corresponding to the specified tokenId and the target chain chainId
```


## RESTful API Reference

### POST /swap/register/{chainid}/{txid}?logindex=0

Register a replacement transaction

Among them, logindex is an optional parameter, and the corresponding log index has a default value of 0. 
If the logindex is 0, all transactions in this transaction are registered.

### GET /swap/status/{chainid}/{txid}?logindex=0

Query replacement status

Among them, logindex is an optional parameter, which corresponds to the log index, and the default value is 0. 
If the logindex is 0, the first replacement in this transaction will be automatically queried.

### GET /swap/history/{chainid}/{address}?offset=0&limit=20&status=8,9

Query replacement history, support paging, addess is the account address

Where status is an optional parameter, if specified, it can be queried according to the status. 
Among them, offset and limit are optional parameters, and the default values are 0 and 20, respectively. 
If limit is negative, it means that the results are taken after sorting in reverse chronological order.

### GET /versioninfo
Get version number information

### GET /serverinfo
Get service information

### GET /allchainids
Get all chainID

### GET /alltokenids
Get all tokenID

### GET /allmultichaintokens/{tokenid}
Get specified tokenID of all multichain token

### GET /chainconfig/{chainid}
Get the chain configuration of the specified chainId

### GET /tokenconfig/{chainid}/{address}
Get the token configuration of the specified chainId and token address

### GET /swapconfig/{tokenid}/{chainid}
Obtain the swap configuration corresponding to the specified tokenId and the target chain chainId
