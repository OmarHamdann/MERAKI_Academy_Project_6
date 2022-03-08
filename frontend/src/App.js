import 'bootstrap/dist/css/bootstrap.min.css'
import { Route, Routes } from "react-router-dom";
import React, { useState } from "react";
import Home from "./components/Home";
// import Navigation from "./components/Navigation";
// import Cities from "./components/Cities";
import Hotels from "./components/Hotels";
// import WishList from "./components/WishList";



//===============================================================

const App = () => {
  return (
    <div className="App">
      {/* <Route path="/navigation" element={<Navigation />} /> */}

      <Routes>

        <Route path="/home" element={<Home />} />
        {/* <Route path="/cities" element={<Cities />} /> */}


        <Route path="/hotels" element={<Hotels />} />
        {/* <Route path="/wishList" element={<WishList />} /> */}


      </Routes>

    </div>
  );
};

export default App;
