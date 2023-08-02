import Carousel from 'react-bootstrap/Carousel';
import './Carousel.css'

function CarouselItem() {
  return (
    <Carousel interval={3000}>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images"
          src="1.png"
          alt="First slide"
        
        />
      </Carousel.Item>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images"
          src="2.png"
          alt="Second slide"
        />
      </Carousel.Item>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images m-n5"
          src="3.png"
          alt="Third slide"
        />
      </Carousel.Item>
    </Carousel>
  );
}

export default CarouselItem;