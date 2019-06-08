import Vuex from 'vuex'
import { web3, contract } from '~/plugins/web3' // import web3@1.0.0 beta-50, Two Initialized web3.eth.Contract

const store = {
  state: {
    contracts: {
      amountRaised: 0,
      goalAmount: 0,
      numInvestors: 0
    }, //0 => CorpToken, 1 => Token
    account: {
      address: null
    }
  },
  getters: {
    contracts: state => state.contracts,
    userAddress: state => state.account.address
  },
  mutations: {
    setContract(state, { contracts }) {
      state.contracts = contracts
    },
    setUserAddress(state, payload) {
      state.account.address = payload
    },
    setDeposited(state, payload) {
      state.contracts.amountRaised = payload
    },
    setNumInvestors(state, payload) {
      state.contracts.numInvestors = payload
    }
  },
  actions: {
    async watchUserAccount({ state, commit }) {
      let userAddress = await web3.eth.getAccounts()
      userAddress = userAddress[0]
      setInterval(() => {
        if (state.userAddress !== userAddress) {
          commit('setUserAddress', userAddress)
        }
      }, 1000)
      contract.getPastEvents('Init').then(event => {
        console.log(event)
      })
    },
    async fetchState({ state, commit }) {
      contract.events.Funded().on('data', event => {
        let data = event.returnValues
        let deposited = web3.utils.hexToNumber(data['2']._hex)
        let numInvestors = web3.utils.hexToNumber(data['3']._hex)
        commit('setDeposited', deposited)
        commit('setNumInvestors', numInvestors)
      })
    }
  }
}

export default () => new Vuex.Store(store)
