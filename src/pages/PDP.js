import React from "react"
import { Container,Row,Col} from "react-bootstrap"
import './Home.scss';
import '../fonts/Almeira-vm20L.ttf';
import './pdp.css'
import { ListGroup } from "react-bootstrap";
import { useParams } from 'react-router-dom';
import products from "../products";
import { Card } from "react-bootstrap";


const _ = require('lodash');


function PDP(props){
    const { product_id } = useParams();
    console.log(`product_id ${product_id}`)
    var product = products.filter((product)=>{return product.id == product_id})[0]
    console.log(product)
return(
    <Container className="">
        <Row>
        <Col>
        <Row lg={2}>
            {product.images.map((image) => (
                <Card >
                    <Card.Img src={image} />
                </Card>
            ))}
        </Row>
        </Col>
        <Col className="" >
            <h3>{_.startCase(product.name)}</h3>
            <p className="product-product">{product.description}</p>
            <hr class="hr" />
            <h5>Customisation Options</h5>
            <ListGroup>
                {product.customizations.map(cus => console.log(cus))}
                {product.customizations.map(customization => 
                    <ListGroup.Item>{customization}</ListGroup.Item>
                )}
            </ListGroup>
            <hr class="hr" />
            <h5>Best Offers</h5>
            <ListGroup>
                {product.offers.map(offer => 
                    <ListGroup.Item>{offer}</ListGroup.Item>
                )}
            </ListGroup>
            <hr class="hr" />
            <h5>Delivery Option</h5>
            <p>We delivery all accross India. To all possible pincode reachable by the major courier services.</p>
        </Col>
        </Row>
       
    </Container>
)
}

export default PDP