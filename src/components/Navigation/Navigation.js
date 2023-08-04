import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import { Link } from 'react-router-dom';
import './Navigation.css';

function NavScrollExample() {
  return (
    <Navbar  expand="lg" className='pb-0'>
      <Container fluid className='d-flex flex-column'>
        <Navbar.Brand href="/" >
        <img
              src="IMG_1416.jpg"
              width="150"
              height="80"
              className="d-inline-block"
              alt="React Bootstrap logo"
            />
            </Navbar.Brand>
        <Navbar.Toggle />
        <Navbar.Collapse className='mt-auto' >
          <Nav>
            <Nav.Link as={Link} className='linktext mx-3' to="/">Home</Nav.Link>
            <Nav.Link as={Link} className='linktext mx-3' to="/">Products</Nav.Link>
            <Nav.Link as={Link} className='linktext mx-3' to="/">Services</Nav.Link>
            <Nav.Link as={Link} className='linktext mx-3' to="/about">About</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default NavScrollExample;