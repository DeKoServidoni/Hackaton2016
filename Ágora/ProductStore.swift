//
//  ProductStore.swift
//  Ágora
//
//  Created by Clerton Leal on 20/08/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation

final class ProductStore{
    
    static var products: [Product] = []
    static var personalLists: [String:[Product]] = [:]
    
    static func getDanoneProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Chanbinho", calories: 50))
        products.append(Product(name: "Achocolatado", calories: 120))
        products.append(Product(name: "Iorgut de morango", calories: 12))
        products.append(Product(name: "Saladinha de frutas", calories: 12))
        products.append(Product(name: "Leite fermentado", calories: 12))
        products.append(Product(name: "Chocolate turma da monica", calories: 12))
        products.append(Product(name: "Biscoito receado turma da monica", calories: 12))
        products.append(Product(name: "Achocolatado do bilu", calories: 12))
        products.append(Product(name: "Iorgut no palito", calories: 12))
        products.append(Product(name: "Iorgut tutiflut", calories: 12))
        products.append(Product(name: "Pudim turma da monica", calories: 12))
        return products
    }
    
    static func getVaiMonstroProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Whey protein", calories: 50))
        products.append(Product(name: "Carne magra", calories: 120))
        products.append(Product(name: "Frango sem pele", calories: 12))
        products.append(Product(name: "Batata doce", calories: 12))
        products.append(Product(name: "Barrinha de proteina", calories: 12))
        products.append(Product(name: "Salmão", calories: 12))
        products.append(Product(name: "Ovos", calories: 12))
        products.append(Product(name: "Queijo curado", calories: 12))
        products.append(Product(name: "manteiga Ghee", calories: 12))
        products.append(Product(name: "Oleo de coco", calories: 12))
        products.append(Product(name: "Macarrão integral", calories: 12))
        products.append(Product(name: "Bolacha de arroz", calories: 12))
        products.append(Product(name: "Castanha de caju", calories: 12))
        return products
    }
    
    static func getFestaNoApProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Vodica", calories: 50))
        products.append(Product(name: "Picanha", calories: 120))
        products.append(Product(name: "Batata Pringles", calories: 12))
        products.append(Product(name: "Coca cola 2L", calories: 12))
        products.append(Product(name: "Pizza congelada", calories: 12))
        products.append(Product(name: "Queijo prato", calories: 12))
        products.append(Product(name: "Salame", calories: 12))
        products.append(Product(name: "Pão", calories: 12))
        products.append(Product(name: "Carne de Hamburguer", calories: 12))
        products.append(Product(name: "Cerveja", calories: 12))
        products.append(Product(name: "Cachaça", calories: 12))
        products.append(Product(name: "Salgadinhos congelados", calories: 12))
        products.append(Product(name: "Chocolate em barra", calories: 12))
        return products
    }
    
    static func getMorandoSozinhoProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Macarrão instantaneo", calories: 50))
        products.append(Product(name: "Salsicha", calories: 120))
        products.append(Product(name: "Lazanha congelada", calories: 12))
        products.append(Product(name: "Nugets de frango", calories: 12))
        products.append(Product(name: "Pizza congelada", calories: 12))
        products.append(Product(name: "Coca cola lata", calories: 12))
        products.append(Product(name: "Feijoada em lata", calories: 12))
        products.append(Product(name: "Pão de forma", calories: 12))
        products.append(Product(name: "Carne de Hamburguer", calories: 12))
        products.append(Product(name: "Cerveja", calories: 12))
        products.append(Product(name: "Camisinha", calories: 12))
        products.append(Product(name: "Cachaça", calories: 12))
        products.append(Product(name: "Bolacha recheada", calories: 12))
        return products
    }
    
    static func getCuraResacaProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Leite", calories: 50))
        products.append(Product(name: "Aspargos", calories: 120))
        products.append(Product(name: "Pão", calories: 12))
        products.append(Product(name: "Bacon", calories: 12))
        products.append(Product(name: "Banana", calories: 12))
        products.append(Product(name: "Tomate", calories: 12))
        products.append(Product(name: "Ovos", calories: 12))
        products.append(Product(name: "Atum", calories: 12))
        products.append(Product(name: "Suco de laranja", calories: 12))
        products.append(Product(name: "Abacate", calories: 12))
        products.append(Product(name: "Café", calories: 12))
        products.append(Product(name: "Queijo frescal", calories: 12))
        products.append(Product(name: "Maçã", calories: 12))
        return products
    }
    
    static func getOlimpicaProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Carne magra", calories: 50))
        products.append(Product(name: "Aspargos", calories: 120))
        products.append(Product(name: "Alfaçe", calories: 12))
        products.append(Product(name: "Biscoito integral", calories: 12))
        products.append(Product(name: "Ovos", calories: 12))
        products.append(Product(name: "Azeite extra virgem", calories: 12))
        products.append(Product(name: "Peixe de rio", calories: 12))
        products.append(Product(name: "Salmão", calories: 12))
        products.append(Product(name: "Peito de frango", calories: 12))
        products.append(Product(name: "Maçã", calories: 12))
        products.append(Product(name: "Macarrão integral", calories: 12))
        products.append(Product(name: "Leite Integral", calories: 12))
        products.append(Product(name: "Barra de proteina", calories: 12))
        return products
    }
    
    static func getVeganoProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Abacate", calories: 50))
        products.append(Product(name: "Aspargos", calories: 120))
        products.append(Product(name: "Alfaçe", calories: 12))
        products.append(Product(name: "Batata inglesa", calories: 12))
        products.append(Product(name: "Batata doce", calories: 12))
        products.append(Product(name: "Azeite extra virgem", calories: 12))
        products.append(Product(name: "Arroz integral", calories: 12))
        products.append(Product(name: "Peira", calories: 12))
        products.append(Product(name: "Castanha de caju", calories: 12))
        products.append(Product(name: "Maçã", calories: 12))
        products.append(Product(name: "Macarrão integral", calories: 12))
        products.append(Product(name: "Café", calories: 12))
        products.append(Product(name: "Uvas", calories: 12))
        return products
    }
    
    static func getRomanticaProducts() -> [Product] {
        var products: [Product] = []
        products.append(Product(name: "Vinho", calories: 50))
        products.append(Product(name: "Queijo", calories: 120))
        products.append(Product(name: "Castanha de caju", calories: 12))
        products.append(Product(name: "Nozes", calories: 12))
        products.append(Product(name: "Camisinha", calories: 12))
        products.append(Product(name: "Amendoim", calories: 12))
        products.append(Product(name: "Aspargo", calories: 12))
        products.append(Product(name: "Chocolate", calories: 12))
        products.append(Product(name: "Mel", calories: 12))
        products.append(Product(name: "Ostras", calories: 12))
        products.append(Product(name: "Pimenta", calories: 12))
        products.append(Product(name: "Sorvete", calories: 12))
        products.append(Product(name: "Uvas", calories: 12))
        return products
    }
    
    static func getAllProducts() -> [Product] {
        if (products.isEmpty) {
            products.append(Product(name: "Chanbinho", calories: 50))
            products.append(Product(name: "Achocolatado", calories: 120))
            products.append(Product(name: "Iorgut de morango", calories: 12))
            products.append(Product(name: "Saladinha de frutas", calories: 12))
            products.append(Product(name: "Leite fermentado", calories: 12))
            products.append(Product(name: "Chocolate turma da monica", calories: 12))
            products.append(Product(name: "Biscoito receado turma da monica", calories: 12))
            products.append(Product(name: "Achocolatado do bilu", calories: 12))
            products.append(Product(name: "Iorgut no palito", calories: 12))
            products.append(Product(name: "Iorgut tutiflut", calories: 12))
            products.append(Product(name: "Pudim turma da monica", calories: 12))
            
            products.append(Product(name: "Whey protein", calories: 50))
            products.append(Product(name: "Carne magra", calories: 120))
            products.append(Product(name: "Frango sem pele", calories: 12))
            products.append(Product(name: "Batata doce", calories: 12))
            products.append(Product(name: "Barrinha de proteina", calories: 12))
            products.append(Product(name: "Salmão", calories: 12))
            products.append(Product(name: "Ovos", calories: 12))
            products.append(Product(name: "Queijo curado", calories: 12))
            products.append(Product(name: "manteiga Ghee", calories: 12))
            products.append(Product(name: "Oleo de coco", calories: 12))
            products.append(Product(name: "Macarrão integral", calories: 12))
            products.append(Product(name: "Bolacha de arroz", calories: 12))
            products.append(Product(name: "Castanha de caju", calories: 12))
            
            products.append(Product(name: "Vodica", calories: 50))
            products.append(Product(name: "Picanha", calories: 120))
            products.append(Product(name: "Batata Pringles", calories: 12))
            products.append(Product(name: "Coca cola 2L", calories: 12))
            products.append(Product(name: "Pizza congelada", calories: 12))
            products.append(Product(name: "Queijo prato", calories: 12))
            products.append(Product(name: "Salame", calories: 12))
            products.append(Product(name: "Pão", calories: 12))
            products.append(Product(name: "Carne de Hamburguer", calories: 12))
            products.append(Product(name: "Cerveja", calories: 12))
            products.append(Product(name: "Cachaça", calories: 12))
            products.append(Product(name: "Salgadinhos congelados", calories: 12))
            products.append(Product(name: "Chocolate em barra", calories: 12))
            
            products.append(Product(name: "Macarrão instantaneo", calories: 50))
            products.append(Product(name: "Salsicha", calories: 120))
            products.append(Product(name: "Lazanha congelada", calories: 12))
            products.append(Product(name: "Nugets de frango", calories: 12))
            products.append(Product(name: "Pizza congelada", calories: 12))
            products.append(Product(name: "Coca cola lata", calories: 12))
            products.append(Product(name: "Feijoada em lata", calories: 12))
            products.append(Product(name: "Pão de forma", calories: 12))
            products.append(Product(name: "Carne de Hamburguer", calories: 12))
            products.append(Product(name: "Cerveja", calories: 12))
            products.append(Product(name: "Camisinha", calories: 12))
            products.append(Product(name: "Cachaça", calories: 12))
            products.append(Product(name: "Bolacha recheada", calories: 12))
            
            products.append(Product(name: "Leite", calories: 50))
            products.append(Product(name: "Aspargos", calories: 120))
            products.append(Product(name: "Pão", calories: 12))
            products.append(Product(name: "Bacon", calories: 12))
            products.append(Product(name: "Banana", calories: 12))
            products.append(Product(name: "Tomate", calories: 12))
            products.append(Product(name: "Ovos", calories: 12))
            products.append(Product(name: "Atum", calories: 12))
            products.append(Product(name: "Suco de laranja", calories: 12))
            products.append(Product(name: "Abacate", calories: 12))
            products.append(Product(name: "Café", calories: 12))
            products.append(Product(name: "Queijo frescal", calories: 12))
            products.append(Product(name: "Maçã", calories: 12))
            
            products.append(Product(name: "Carne magra", calories: 50))
            products.append(Product(name: "Aspargos", calories: 120))
            products.append(Product(name: "Alfaçe", calories: 12))
            products.append(Product(name: "Biscoito integral", calories: 12))
            products.append(Product(name: "Ovos", calories: 12))
            products.append(Product(name: "Azeite extra virgem", calories: 12))
            products.append(Product(name: "Peixe de rio", calories: 12))
            products.append(Product(name: "Salmão", calories: 12))
            products.append(Product(name: "Peito de frango", calories: 12))
            products.append(Product(name: "Maçã", calories: 12))
            products.append(Product(name: "Macarrão integral", calories: 12))
            products.append(Product(name: "Leite Integral", calories: 12))
            products.append(Product(name: "Barra de proteina", calories: 12))
            
            products.append(Product(name: "Abacate", calories: 50))
            products.append(Product(name: "Aspargos", calories: 120))
            products.append(Product(name: "Alfaçe", calories: 12))
            products.append(Product(name: "Batata inglesa", calories: 12))
            products.append(Product(name: "Batata doce", calories: 12))
            products.append(Product(name: "Azeite extra virgem", calories: 12))
            products.append(Product(name: "Arroz integral", calories: 12))
            products.append(Product(name: "Peira", calories: 12))
            products.append(Product(name: "Castanha de caju", calories: 12))
            products.append(Product(name: "Maçã", calories: 12))
            products.append(Product(name: "Macarrão integral", calories: 12))
            products.append(Product(name: "Café", calories: 12))
            products.append(Product(name: "Uvas", calories: 12))
            
            products.append(Product(name: "Vinho", calories: 50))
            products.append(Product(name: "Queijo", calories: 120))
            products.append(Product(name: "Castanha de caju", calories: 12))
            products.append(Product(name: "Nozes", calories: 12))
            products.append(Product(name: "Camisinha", calories: 12))
            products.append(Product(name: "Amendoim", calories: 12))
            products.append(Product(name: "Aspargo", calories: 12))
            products.append(Product(name: "Chocolate", calories: 12))
            products.append(Product(name: "Mel", calories: 12))
            products.append(Product(name: "Ostras", calories: 12))
            products.append(Product(name: "Pimenta", calories: 12))
            products.append(Product(name: "Sorvete", calories: 12))
            products.append(Product(name: "Uvas", calories: 12))
        }
        
        return products
    }
    
    static func getPersonalList(name: String) -> [Product]? {
        return personalLists[name]
    }
    
    static func setPersonalList(name: String, products: [Product]) {
        personalLists[name] = products
    }
    
    static func getAllPersonalLists() -> [String:[Product]]? {
        return personalLists
    }
    
}
