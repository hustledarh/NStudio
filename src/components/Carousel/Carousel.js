import Carousel from 'react-bootstrap/Carousel';
import './Carousel.css'

function CarouselItem() {
  return (
    <Carousel interval={3000}>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images"
          src="jaane-2-ya-jaane-na.jpg"
          alt="First slide"
        
        />
      </Carousel.Item>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images"
          src="jaane-2-ya-jaane-na.jpg"
          alt="Second slide"
        />
      </Carousel.Item>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images m-n5"
          src="jaane-2-ya-jaane-na.jpg"
          alt="Third slide"
        />
      </Carousel.Item>
    </Carousel>
  );
}

export default CarouselItem;