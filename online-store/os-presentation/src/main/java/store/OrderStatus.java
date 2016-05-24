package store;

public enum OrderStatus {
	PENDING,		//в обработке
	PROCESSING,		//принят
	SHIPPING,		//в службе доставки
	SHIPPED,		//доставлен
	COMPLETED,		//выполнен
	DECLINED,		//отменён магазином
	CANCELLED,		//отменён покупателем
	RETURNED		//возвращён
}
