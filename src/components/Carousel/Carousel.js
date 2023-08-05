import Carousel from 'react-bootstrap/Carousel';
import './Carousel.css'

function CarouselItem() {
  return (
    <Carousel interval={3000}>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images"
          src="black-white-tujse.jpeg"
          alt="First slide"
        
        />
      </Carousel.Item>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images"
          src="white-black-shayari.jpeg"
          alt="Second slide"
        />
      </Carousel.Item>
      <Carousel.Item className='carousle-item'>
        <img
          className="carousle-images m-n5"
          src="black-red-collage.jpeg"
          alt="Third slide"
        />
      </Carousel.Item>
    </Carousel>
  );
}

export default CarouselItem;