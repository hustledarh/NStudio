import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import { Link } from 'react-router-dom';
import '../../custom.scss';
import './Navigation.css';

function NavScrollExample() {
  return (
    <Navbar className=" mb-5" expand="lg">
      <Container fluid className=''>
        <Navbar.Brand href="/" className='ms-sm-5'>
        <img
              src="IMG_1416.jpg"
              width="200"
              height="150"
              className="d-inline-block align-top"
              alt="React Bootstrap logo"
            />
            </Navbar.Brand>
        <Navbar.Toggle />
        <Navbar.Collapse className='mt-auto me-5' >
          <Nav className='mx-auto pe-5' >
            <Nav.Link as={Link} className='link-text' to="/">Home</Nav.Link>
            <Nav.Link as={Link} className='link-text' to="/">Products</Nav.Link>
            <Nav.Link as={Link} className='link-text' to="/">Services</Nav.Link>
            <Nav.Link as={Link} className='link-text' to="/about">About</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default NavScrollExample;