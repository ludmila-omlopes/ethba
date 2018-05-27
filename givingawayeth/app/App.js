import React from 'react'
import {
  AragonApp,
  Button,
  Text,

  observe
} from '@aragon/ui'
import Aragon, { providers } from '@aragon/client'
import styled from 'styled-components'

const AppContainer = styled(AragonApp)`
  display: flex;
  align-items: center;
  justify-content: center;
`

export default class App extends React.Component {
  render () {
    return (
      <AppContainer>
        <div>
          <ObservedCount observable={this.props.observable} />
          <Button onClick={() => this.props.app.requestDonation(10, "teste")}>Request</Button>
        </div>
      </AppContainer>
    )
  }
}

const ObservedCount = observe(
  (state$) => state$,
  { text: "" }
)(
  ({ text }) => <Text.Block style={{ textAlign: 'center' }} size='xxlarge'>{text}</Text.Block>
)
