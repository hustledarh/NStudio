import React from "react"
import { Container,Row,Col} from "react-bootstrap"
import CarouselItem from "../components/Carousel/Carousel";
import './Home.scss';
import '../fonts/Almeira-vm20L.ttf';
import ProductGrid from "../components/CardGrid/ProductGrid";
import products from "../products";

const categoryItems = products.reduce((acc, obj) => {
    const key = obj.category;
  
    if (!acc.keys[key]) {
      acc.keys[key] = true;
      acc.result.push(obj);
    }
  
    return acc;
  }, { keys: {}, result: [] }).result;

function Home(){
return(
    <Container>
        <Row xs={1} md={1} lg={1} >
        <Col>
        <CarouselItem /> 
        </Col>
        </Row>
        <h2 className="pt-5 text-center" id="products">Our Products</h2>
        <hr class="hr" />
        <ProductGrid items={categoryItems} width={4} gridType="category"/>
        <h2 className="pt-5 text-center" id="new_arrivals">New Arrivals</h2>
        <hr class="hr" />
        <ProductGrid items={products.filter((products)=>{return products.tags.includes("new")})} width={4}/>
    </Container>
)
}

export default Home