package com.tgv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.tgv.Dao.CarroDao;
import org.tgv.pojo.Carro;

@Service
public class CarroService {
		
		@Autowired
		private CarroDao carroDao;
		
		
		public List<Carro> buscarTodos() {
			// TODO Auto-generated method stub
			return carroDao.buscarTodos();
		}
		
		public void save(Carro carro) {
			carroDao.save(carro);
		}

}
