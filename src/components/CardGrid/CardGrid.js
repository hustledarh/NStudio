import Card from 'react-bootstrap/Card';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';




function GridExample() {
  const items = ['black-white-tujse.jpeg', 'black-cream-quote.jpeg', 'brown-frame.jpeg', 'black-red-believe.jpeg', 'cream-yellow-colage.jpeg', 'white-black-shayari.jpeg', 'black-red-collage.jpeg']
  return (
    <Row xs={1} md={3} lg={4} className="g-4">
      {Array.from(items).map((img, idx) => (
        <Col key={idx}>
          <Card>
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