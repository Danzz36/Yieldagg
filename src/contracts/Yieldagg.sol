pragma solidity ^0.8.7;

import //DAI
import //compound
import //aave


contract Yieldagg {
	using SafeMath for uint;


	// state variables
	
	
	// Events
	

	// constructor() public {   ?

	//}


	// Title - deposit DAI into Yieldagg contract
	// Minting local test net DAI - https://github.com/compound-developers/compound-supply-examples#minting-localhost-test-dai
	function deposit() external payable {
   		Yieldagg.transfer(msg.value); ????
	}






	


	// Function - Looks at which has higher interest rate and deposits funds into higher yield protocol
  	function rateDecision() internal {
  		if(aaveRate > compoundRate) {
  			//deposit to aave
  		} else {
  			//deposit to compound
  	}
  	






  	


  	// Function - Specific method for fetching Aave deposit interest rates = aaveRate
	function getReserveData(address asset) {
	//Gets liquidityRate and returns it to variable 'aaveRate' that is compared in rateDecision function above?
	}
	//Returns the associated data for 'asset' which includes - uint256 liquidityRate: the interest rate for deposits / adding liquidity
	//Each market has a separate Protocol Data Provider. To get the address for a particular market, call getAddress() using the value 0x1.
	//https://docs.aave.com/developers/the-core-protocol/protocol-data-provider#getreservedata
	









	//Function - Specific method for fetching Compound deposit interest rates = compoundRate
	compound api - Market History Service? Read method? Price feed methods? chainlink? 
	//https://compound.finance/docs/compound-js#supply








	//Function - Deposit into Aave
	function deposit(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) {

	}
	//Deposits a certain amount of an asset into the protocol, minting the same amount of corresponding aTokens, and transferring them to the onBehalfOf address.
	//For referralCode input explanations, please refer to the referral program section of the documentation. During testing, you can use the referral code: 0.
	//When depositing, the LendingPool contract must have allowance()to spend funds on behalf ofmsg.sender for at-leastamount for the asset being deposited. This can be done via the standard ERC20 approve() method.
	//https://docs.aave.com/developers/v/2.0/the-core-protocol/lendingpool#deposit










	//Function - Deposits into Compound
	//Mint some cDAI by sending DAI to the Compound Protocol
  	console.log(`MyContract is now minting c${assetName}...`);
  	let supplyResult = await myContract.methods.supplyErc20ToCompound(
    underlyingMainnetAddress,
    cTokenAddress,
    web3.utils.toHex(10 * Math.pow(10, underlyingDecimals)) // 10 tokens to supply
  	).send(fromMyWallet);

  	//https://medium.com/compound-finance/supplying-assets-to-the-compound-protocol-ec2cf5df5aa
  	//https://github.com/compound-developers/compound-supply-examples/blob/master/solidity-examples/supply-erc20-via-solidity.js
	









	//Function - Withdraws from Aave back into Yieldagg smart contract and then gives back to user or deposits into compound
	function withdraw(address asset, uint256 amount, address to) {

	}
	//Withdraws amount of the underlying asset, i.e. redeems the underlying token and burns the aTokens.
	//When withdrawing to another address,msg.sender should have aToken that will be burned by lendingPool .
	////https://docs.aave.com/developers/v/2.0/the-core-protocol/lendingpool#deposit
	









	//Function - Withdraws from Compound back into smart contract and then gives back to user or deposits in Aave
	// Call redeem based on a cToken amount
  	const amount = web3.utils.toHex(cTokenBalance * 1e8);
  	const redeemType = true; // true for `redeem`

  	// Call redeemUnderlying based on an underlying amount
  	// const amount = web3.utils.toHex(balanceOfUnderlying);
  	// const redeemType = false; //false for `redeemUnderlying`

	// Retrieve your asset by exchanging cTokens
	  console.log(`Redeeming the c${assetName} for ${assetName}...`);
	  let redeemResult = await myContract.methods.redeemCErc20Tokens(
	    amount,
	    redeemType,
	    cTokenAddress
	  ).send(fromMyWallet);

	  if (redeemResult.events.MyLog.returnValues[1] != 0) {
	    throw Error('Redeem Error Code: '+redeemResult.events.MyLog.returnValues[1]);
	  }

	  cTokenBalance = await cToken.methods.balanceOf(myContractAddress).call();
	  cTokenBalance = cTokenBalance / 1e8;
	  console.log(`MyContract's c${assetName} Token Balance:`, cTokenBalance);
	}

	main().catch((err) => {
	  console.error(err);
	});
	//https://github.com/compound-developers/compound-supply-examples/blob/master/solidity-examples/supply-erc20-via-solidity.js
	









	// Function - Rebalance function - calls rateDecision function above (must add a withdraw from to contract before deposit) and looks at which interest rate is higher. Then decides to either keep money in current
	// protocol or withdraw and then deposit into other protocol 
	









	// Function - Looks at Aave and Compound and returns the protocol currently in and balance in terms of ETH and DAI
	 
	// Gets ctoken balance from compound?
	let cTokenBalance = await cToken.methods.balanceOf(myContractAddress).call();
  	cTokenBalance = cTokenBalance / 1e8;
  	console.log(`MyContract's c${assetName} Token Balance:`, cTokenBalance);

  	// Gets value of underlying asset in compound?
	let balanceOfUnderlying = await cToken.methods
    .balanceOfUnderlying(myContractAddress).call() / Math.pow(10, underlyingDecimals);
  	console.log(`${assetName} supplied to the Compound Protocol:`, balanceOfUnderlying);
  	//https://github.com/compound-developers/compound-supply-examples/blob/master/solidity-examples/supply-erc20-via-solidity.js


	}