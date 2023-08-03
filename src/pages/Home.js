import React from "react"
import { Container,Row,Col, Stack} from "react-bootstrap"
import { useState } from "react";
import CarouselItem from "../components/Carousel/Carousel";
import './Home.css';
import '../fonts/Almeira-vm20L.ttf';
import GridExample from "../components/CardGrid/CardGrid";


function Home(){
return(
    <Container>
        <Row >
        <Col >
        <CarouselItem/> 
        </Col>
        <Col className="p-5  border border-5 d-flex flex-column justify-content-around">
        <p className="message-1">Want to a perfect gift for an occassion or impress your wife, family, friend or a collegue with a perfect gift ? </p>
        <p className="message-1"> We are here to help !!</p>
        <p className="message-1"><b>Studio N </b> brings meticullously curated designs to lit your special moments.</p>
        </Col>
        </Row>
        <h1 className="py-5">Products</h1>
        <GridExample/>
    </Container>
)
}

export default Home