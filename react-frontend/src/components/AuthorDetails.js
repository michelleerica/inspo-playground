import React, {Component} from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';

export default class AuthorDetails extends Component{
  constructor(props){
    super();
    // debugger;
    this.state = {
      author: null,
      authorName: null,
      quotes: null
    }
  } //constructor


  componentDidMount(){
    const num = parseInt(this.props.match.params.author)
    const url = `/authors/${num}`
    axios.get(url)
    .then( results => this.setState(
      {authorName: results.data.name,
      author:results.data.id,
      quotes:results.data.quotes}) )


  }

  render(){

    if( !this.state.quotes ){
      return <em>Loading...</em>;
    }

    const quotes = this.state.quotes.map(quote =>  <div className='quotes'>{quote.contents}</div>)

    return(
      <div>
        <h1>{this.state.authorName}</h1>
        <div className='container'>
            {quotes}
        </div>
        <Link to='/'>back</Link>
    </div>
    )
  }

}
