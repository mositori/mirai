import Vue from 'vue'
import Web3 from 'web3'
import CrowdFunding from '~/../blockchain/contracts/CrowdFunding'

let web3

if (typeof window !== 'undefined' && typeof window.ethereum !== 'undefined') {
  web3 = new Web3(window.ethereum)
  window.ethereum.enable().catch(err => {
    console.log(err)
  })
} else if (
  typeof window !== 'undefined' &&
  typeof window.web3 !== 'undefined'
) {
  web = new Web3(window.web3.currentProvider)
} else {
  const httpEndpoint = 'http://127.0.0.1:7545'
  const provider = new Web3.providers.HttpProvider(httpEndpoint)
  web3 = new Web3(provider)
}

const address = [
  CorpToken['networks']['5777']['address'],
  Token['networks']['5777']['address']
]
const corpToken = new web3.eth.Contract(CorpToken.abi, address[0])
const token = new web3.eth.Contract(Token.abi, address[1])

export { web3, corpToken, token }
