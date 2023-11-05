import Card from 'react-bootstrap/Card';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';
import { Link } from 'react-router-dom';




function GridExample(props) {
  // console.log(props)
  const items = props.items
  const width = props.width
    return (
    <Row xs={width-3} md={width-2} lg={width} className="g-4 justify-content-center">
      {items.map((product, idx) => (
        <Col key={idx}>
          <Link to={`${product.category}/${product.name}/${product.id}`}>
            <Card >
              <Card.Img src={product.images[0]} />
              <Card.Title className='text-center'>{product.name}</Card.Title>
            </Card>
          </Link>
        </Col>
      ))}
    </Row>
  );
}

export default GridExample;