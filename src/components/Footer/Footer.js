import { Container,Row,Col } from "react-bootstrap";
import "./Footer.css"

function Footer(){
    return(
       <Container className="footer mt-3 pb-5 p-0 m-0 ">
        <h2 className="pt-5 text-center">“About us, who we are, and what we do.”</h2>

         <hr class="hr" />
        <Row  className="justify-content-center">
            <Col>
            <p className="text-center about"> Studio N, is our little online store with customised products, with all the love and care! 
This online store is run by two very nice humans who look forward to great conversations & having coffee. <a href="https://mail.google.com/mail/u/0/?subject=ORDER&view=cm&fs=1&tf=1&to=studio.n.circle@gmail.com&body=Hi%20N_Studio%2C%0A%0AI%20really%20linked%20your%20product%20and%20wanted%20to%20get%20something%20customised%20for%20myself%0A%0Acontact%20%3A%20" target="_blank" rel="noopener noreferrer">Write to us</a> you have any queries and follow us on <a href="https://instagram.com/nandiini_jain?utm_source=qr&igshid=MzNlNGNkZWQ4Mg%3D%3D" target="_blank" rel="noopener noreferrer">Instagram</a>. </p>
            </Col>
        </Row>
       </Container>
    )
}

export default Footer;