import { Container } from "react-bootstrap";
import NavigationBar from "./components/Navigation/Navigation";
import Home from "./pages/Home";
import JsonFormatter from "./pages/JsonFormatter";
import React from "react";
import { Routes, Route } from "react-router-dom";
import Footer from "./components/Footer/Footer"
import PDP from "./pages/pdp";
import PLP from "./pages/plp";


function App() {
  return (
    <Container className="shadow-lg bg-white main-container">
      <NavigationBar/>
      <hr class="hr mb-5 mt-0" />
      <Routes>
        <Route exact path="/jsonformatter" element={<JsonFormatter />} />
        <Route exact path="/" element={<Home />} />
        <Route 
        path="/:product_category/:product_name/:product_id" 
        element={<PDP/>}
        />
        <Route 
        path="/:product_category" 
        element={<PLP/>}
        />
      </Routes>
      <Footer/>
    </Container>
  );
}

export default App;