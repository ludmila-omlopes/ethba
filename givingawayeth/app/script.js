import Aragon from '@aragon/client'

const app = new Aragon()

const initialState = {
  text: ""
}
app.store(async (state, event) => {
  if (state === null) state = initialState

  switch (event.event) {
    case 'RequestDonation':
      return { count: await getValue() }
    default:
      return state
  }
})

function getValue() {
  // Get current value from the contract by calling the public getter
  return new Promise(resolve => {
    app
      .call('hiTest')
      .first()
      .map(text => parseInt(hiTest, 10))
      .subscribe(resolve)
  })
}
