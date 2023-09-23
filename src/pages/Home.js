import React from "react"
import { Container,Row,Col} from "react-bootstrap"
import CarouselItem from "../components/Carousel/Carousel";
import './Home.scss';
import '../fonts/Almeira-vm20L.ttf';
import GridExample from "../components/CardGrid/CardGrid";


function Home(){
return(
    <Container>
        <Row xs={1} md={1} lg={1} >
        <Col>
        <CarouselItem /> 
        </Col>
        {/* <Col className="p-3 w-80 border border-5 d-flex flex-column justify-content-around">
        <p className="message-1">Want to a perfect gift for an occassion or impress your wife, family, friend or a collegue with a perfect gift ? </p>
        <p className="message-1"> We are here to help !!</p>
        <p className="message-1"><b>Studio N </b> brings meticullously curated designs to lit your special moments.</p>
        </Col> */}
        </Row>
        <h1 className="pt-5 text-center">Our Products</h1>
        <hr class="hr" />
        <GridExample items={['black-white-tujse.jpeg', 'black-cream-quote.jpeg', 'brown-frame.jpeg', 'black-red-believe.jpeg', 'cream-yellow-colage.jpeg', 'white-black-shayari.jpeg', 'black-red-collage.jpeg']}/>
        <h1 className="pt-5 text-center">New Arrivals</h1>
        <hr class="hr" />
        <GridExample items={['black-white-tujse.jpeg', 'black-cream-quote.jpeg', 'brown-frame.jpeg']}/>
        <h1 className="pt-5 text-center">About</h1>
        <hr class="hr" />
        <Row  className="justify-content-center">
            <Col>
            <p className="text-center about"> Studio N, is our little online store with customised products, with all the love and care! 
This online store is run by two very nice humans who look forward to great conversations & having coffee. Please do contact us if you have any queries and follow us on Instagram. </p>
            </Col>
        </Row>
    </Container>
)
}

export default Home