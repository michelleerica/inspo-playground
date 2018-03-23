import React, {Component} from 'react';
import axios from 'axios';

export default class Form extends Component{
  constructor(){
    super();

    this.state = {
      quote: '',
      author_id: '',

    }

    this._handleChange = this._handleChange.bind(this);
    this._submitForm = this._submitForm.bind(this);

  }

  _handleChange(e){
    this.setState({[e.target.name]: e.target.value});
    console.log(this.state.quote);
  }

  _submitForm(e){
    e.preventDefault();

    axios.post('/quotes', {
      contents: this.state.quote,
      author_id: this.state.author_id
    })
    .then( response => {
      console.log(response.data)
    })
    .catch(err => console.log(err))

  }



  render(){

    

    return (
      <div>
        <form onSubmit={this._submitForm}>
          <h2> Quote </h2>
          <textarea name="quote" onChange={ this._handleChange }></textarea>
          <h2> Author </h2>
          <input type="text" name="author_id" onChange={ this._handleChange }></input>
          <br/>
          <input type="submit" value="Submit"/>
      </form>

      </div>
    )
  }

}
