import React from "react"
import { Container,Row,Col} from "react-bootstrap"
import './Home.scss';
import '../fonts/Almeira-vm20L.ttf';
import './pdp.css'
import { ListGroup } from "react-bootstrap";
import { useParams } from 'react-router-dom';
import { Card } from "react-bootstrap";
import ProductGrid from "../components/CardGrid/ProductGrid";
import products from "../products";

const _ = require('lodash');


function PLP(props){
    const { product_category } = useParams();
    console.log(`product_category ${product_category}`)
    var product_list = products.filter((product)=>product.category == product_category)
    console.log(product_list)
return(
    <Container className="">
        <h2 className="pt-5" id="products">{_.capitalize(product_category)}</h2>
        <hr class="hr" />
        <ProductGrid items={product_list} width={4}/>
    </Container>
)
}

export default PLP