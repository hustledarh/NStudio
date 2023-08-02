import NavigationBar from "./components/Navigation/Navigation";
import Home from "./pages/Home";
import JsonFormatter from "./pages/JsonFormatter";
import React from "react";
import { Routes, Route } from "react-router-dom";

function App() {
  return (
    <React.Fragment>
      <NavigationBar/>
      <Routes>
        <Route exact path="/jsonformatter" element={<JsonFormatter />} />
        <Route exact path="/" element={<Home />} />
      </Routes>
    </React.Fragment>


  );
}

export default App;