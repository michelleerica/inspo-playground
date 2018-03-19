import React, { Component } from 'react';
import './App.css';
// import ReactDOM, { render } from 'react-dom';
import { HashRouter as Router, Route } from 'react-router-dom';
import HomePage from './components/HomePage';
import AuthorDetails from './components/AuthorDetails';

class App extends Component {

  render() {
    return (
      <Router>

        <div>
          <Route exact path="/" component={ HomePage } />
          <Route path="/author/:author" component={AuthorDetails}/>
        </div>
      </Router>

    );
  }
}

export default App;
