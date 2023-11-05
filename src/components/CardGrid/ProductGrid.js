import Card from 'react-bootstrap/Card';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';
import { Link } from 'react-router-dom';




function ProductGrid(props) {
  const items = props.items
  const gridType = props.gridType
  const width = props.width
    return (
    <Row xs={width-3} md={width-2} lg={width} className="g-4 justify-content-center">
      {items.map((product, idx) => {
        var to= `/${product.category}/${product.name}/${product.id}`
        var product_name = product.name
        if (gridType === "category"){
          to = `/${product.category}`
          product_name = product.category
        }
        return (
        <Col key={idx}>
          <Link to={to} className="no-underline">
            <Card >
              <Card.Img src={product.images[0]} />
              <Card.Title className='text-center no-underline'>{product_name}</Card.Title>
            </Card>
          </Link>
        </Col>
      )})}
    </Row>
  );
}

export default ProductGrid;