import Card from 'react-bootstrap/Card';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';




function GridExample(props) {
  console.log(props)
  const items = props.items
    return (
    <Row xs={1} md={3} lg={4} className="g-4">
      {Array.from(items).map((img, idx) => (
        <Col key={idx}>
          <Card className='border-4'>
            <Card.Img variant="top" src={img} />
            <Card.Body>
              <Card.Title>{img.replace(".jpeg","")}</Card.Title>
              {/* <Card.Text>
                This is a longer card with supporting text below as a natural
                lead-in to additional content. This content is a little bit
                longer.
              </Card.Text> */}
            </Card.Body>
          </Card>
        </Col>
      ))}
    </Row>
  );
}

export default GridExample;