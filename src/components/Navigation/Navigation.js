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
        <div className=' p-0 m-0'>
          <p className='text-center p-0 m-0'>Orders @</p>
          <div className='d-flex align-items-center m-0' >
          <img src='whatsapp.png' width={20} height={20}/>
            <p className='ms-2 mb-0'>7057410143</p>
          </div>
        </div>
      </Container>
    </Navbar>
  );
}

export default NavScrollExample;