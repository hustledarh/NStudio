import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import { Link } from 'react-router-dom';
import './Navigation.css';
import { Col,Row} from 'react-bootstrap';

function NavScrollExample() {
  return (
    <Navbar  expand="lg" className='pb-0'>
      <Container fluid className='pe-5 d-flex flex-row border'>
        <Navbar.Toggle />
        <img src='mainLogo.PNG' width={120}></img>
        <Navbar.Collapse  >
          <Nav className='mx-auto'>
            <Nav.Link as={Link} className='mx-3' to="/">Home</Nav.Link>
            <Nav.Link as={Link} className='mx-3' to="/">Products</Nav.Link>
            <Nav.Link as={Link} className='mx-3' to="/">Services</Nav.Link>
            <Nav.Link as={Link} className='mx-3' to="/about">About</Nav.Link>
          </Nav>
        </Navbar.Collapse>
        <Row>
          <Col>
          <a href="https://instagram.com/nandiini_jain?utm_source=qr&igshid=MzNlNGNkZWQ4Mg%3D%3D" target="_blank" rel="noopener noreferrer">
            <img src='instagram.png' ></img>
          </a>
          </Col>
          <Col>
          <a href="https://api.whatsapp.com/send?phone=8237636728" target="_blank" rel="noopener noreferrer">

            <img src='whatsapp.png'></img>
          </a>
          </Col>
          <Col>
          <a href="https://mail.google.com/mail/u/0/?subject=ORDER&view=cm&fs=1&tf=1&to=studio.n.circle@gmail.com&body=Hi%20N_Studio%2C%0A%0AI%20really%20linked%20your%20product%20and%20wanted%20to%20get%20something%20customised%20for%20myself%0A%0Acontact%20%3A%20" target="_blank" rel="noopener noreferrer">
          <img src='gmail.png'></img>
          </a>
          </Col>
        </Row>
  
      </Container>
    </Navbar>
  );
}

export default NavScrollExample;