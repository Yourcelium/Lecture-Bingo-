import React from 'react';
import ReactDOM from 'react-dom'

class Root extends React.Component {
    constructor(props){
        super(props)
    }
    render() {
        return (
            <>
                <div>
                    Nevermind
                </div>
            </>
        )
    }
}



document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(<Root/>, document.getElementById('main'))
})