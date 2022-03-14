import 'bootstrap/dist/css/bootstrap.min.css'

import { Route, Routes } from "react-router-dom";
import React, { useState } from "react";
import Home from "./components/Home";
import Navigation from "./components/Navigation";

import Footer from './components/Footer/Footer';
import Hotels from "./components/Hotels";

import Cities from "./components/Cities";

import "./App.css";

import WishList from "./components/WishList";
import Detail from './components/Detail/Detail';



//===============================================================

const App = () => {
  return (
    <div className="App">
  <Navigation />

      <Routes>

        <Route path="/home" element={<Home />} />
        <Route path="/cities" element={<Cities />} />
        

        <Route path="/hotels" element={<Hotels />} />
        <Route path="/wishList" element={<WishList />} />
        <Route path="/detail/:id" element={<Detail />} />


      </Routes>
      <Footer />

    </div>
  );
};

export default App;
