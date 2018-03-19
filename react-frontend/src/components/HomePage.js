import React, {Component} from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
import ReactModal from 'react-modal'
import Quotes from './Quotes'
import Form from './Form'


const customStyles = {
  content : {
    top                   : '50%',
    left                  : '50%',
    right                 : 'auto',
    bottom                : 'auto',
    marginRight           : '-50%',
    transform             : 'translate(-50%, -50%)'
  }
};

export default class HomePage extends Component{

  constructor(){
    super();
    this.state = {
      showModal: false
    };
    this.handleOpenModal = this.handleOpenModal.bind(this);
    this.handleCloseModal = this.handleCloseModal.bind(this);
  }

  handleOpenModal(){
    this.setState({showModal: true});
  }

  handleCloseModal(){
    this.setState({showModal: false});
  }

  render(){

    return(
      <div>
        <h1> Quote </h1>

          <div ><Quotes/></div>
          <button onClick={this.handleOpenModal}>Trigger Modal</button>
        <ReactModal
           isOpen={this.state.showModal}
           onRequestClose={this.handleCloseModal}
           style={customStyles}
        >
          <Form/>
        </ReactModal>
      </div>
    )



  }
}
