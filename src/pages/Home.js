import React from "react"
import { Container,Row,Col, Stack} from "react-bootstrap"
import { useState } from "react";
import CarouselItem from "../components/Carousel/Carousel";
import './Home.css';


function Home(){
return(
    <Container>
        <Row>
        <Col>
        <CarouselItem/> 
        </Col>
        <Col className="p-5 bg-tertiary border border-5">
        <p className="fs-2  message-1">Want to a perfect gift for an occassion or impress your wife, family, friend or a collegue with a perfect gift ? </p>
        <p className="fs-1 message-2"> We are here to help !!</p>
        <p className="fs-2  message-2"><b className="text-white">Studio N </b> brings meticullously curated designs to lit your special moments.</p>
        
        </Col>
        </Row>
    </Container>
)
}

export default Home