import { Container } from "react-bootstrap";
import NavigationBar from "./components/Navigation/Navigation";
import Home from "./pages/Home";
import "./App.css"
import JsonFormatter from "./pages/JsonFormatter";
import React from "react";
import { Routes, Route } from "react-router-dom";


function App() {
  return (
    <div 
      style={{backgroundImage: `url(bg-image.jpg)`}}>
    <Container className="shadow-lg bg-white main-container">
      <NavigationBar/>
      <hr class="hr mb-5 mt-0" />
      <Routes>
        <Route exact path="/jsonformatter" element={<JsonFormatter />} />
        <Route exact path="/" element={<Home />} />
      </Routes>
    </Container>
    </div>
  );
}

export default App;