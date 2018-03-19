import React, {Component} from 'react';
// import {Link} from 'react-router-dom';
import axios from 'axios';
import Author from './Author'

export default class Quotes extends Component{
  constructor(props){
    super(props);

    this.state = {
      quotes: null
    }
    this.quoteArray = this.quoteArray.bind( this );
    // this.setQuote = this.setQuote.bind( this );

  }

  componentDidMount() {
    axios.get('/quotes')
    .then( results => this.setState({quotes: results.data}) )
    // .then( results => console.log(results.data))
    .catch( console.error );
    // debugger;
  }


  quoteArray(){
    const quotesFull = this.state.quotes.map(function(quote){

      const quoteWords = quote.contents
      const author_id = quote.author_id

      return [quoteWords, author_id]
    })

    const index = Math.floor(Math.random()*quotesFull.length)
    console.log(index);
    console.log(quotesFull[index]);

    return quotesFull[index]
  }

  // setQuote(){
  //   let quote = this.quoteArray()
  //   let author = quote[1]
  //   console.log('set quote ran');
  //   return <div>{quote[0]}</div>
  //
  // }


  render(){
    if( !this.state.quotes ){
      return <em>Loading...</em>;
    }

    //
    const quote = this.quoteArray()
    const author = quote[1]

    //not working TODO
    const setQuote = () => {
      // debugger;
      let quote = this.quoteArray()
      let author = quote[1]
      console.log('set quote ran');
      return <li>TEST</li>

    }
    // const authorURL = `/author/${author}`
    //
    // const location = {
    //   pathname: authorURL,
    //   state: { authorName: 'strings' }
    // }
    // debugger;
    return(
      <div>
        <div className="container">
          <div className="quotes">{quote[0]}</div>
        </div>
        <div><Author authorName={author}/></div>
        <a href="#" onClick={setQuote}>Next</a>
      </div>
    )



  }
}
