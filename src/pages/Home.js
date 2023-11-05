import React from "react"
import { Container,Row,Col} from "react-bootstrap"
import CarouselItem from "../components/Carousel/Carousel";
import './Home.scss';
import '../fonts/Almeira-vm20L.ttf';
import GridExample from "../components/CardGrid/CardGrid";
import products from "../products";


function Home(){
return(
    <Container>
        <Row xs={1} md={1} lg={1} >
        <Col>
        <CarouselItem /> 
        </Col>
        </Row>
        <h2 className="pt-5 text-center" id="new_arrivals">New Arrivals</h2>
        <hr class="hr" />
        <GridExample items={products.filter((products)=>{return products.tags.includes("new")})} width={4}/>
        <h2 className="pt-5 text-center" id="products">Our Products</h2>
        <hr class="hr" />
        <GridExample items={products} width={4}/>
    </Container>
)
}

export default Home