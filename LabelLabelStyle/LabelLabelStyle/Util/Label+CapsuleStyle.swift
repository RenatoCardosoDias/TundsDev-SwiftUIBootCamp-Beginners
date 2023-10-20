//
//  Label+CapsuleStyle.swift
//  LabelLabelStyle
//
//  Created by Renato on 19/10/23.
//

import Foundation
import SwiftUI

struct CapsuleStyle: LabelStyle{

	func makeBody(configuration: Configuration) -> some View {
		Label(configuration)
			.padding()
			.background(.blue)
			.clipShape(Capsule())
	}
}
//oque estamos dizendo aqui é estamos aplicando uma extension sobre o protocolo LabelStyle e estamos dizendo onde o tipo CapsuleStyle nos queremos fazer uma propriedade disponível que cria essa struct para nós que é por que nos estamos dizendo nisto aqui, Então poruqe estmoas usando uma variavel estatica, para ser capaz de usar a notatação .("ponto final") para criar e acessar uma instancia desta propriedade 
extension LabelStyle where Self == CapsuleStyle {
	static var capsule: CapsuleStyle { .init() }
}

struct StrongCapsuleStyle: LabelStyle {
	let color: Color

	func makeBody(configuration: Configuration) -> some View {
		Label {
			configuration
				.title
				.foregroundColor(.white)
				.font(.system(size: 15, weight: .bold))
		} icon: {
			configuration.icon
		}
		.padding()
		.background(color)
		.clipShape(Capsule())
	}
}

//que em vez de ter uma propriedade de computador, uma propriedade estática de computador, agora temos uma função e estamos passando a cor que queremos, mas desta vez defini um valor padrão de vermelho se você não quiser dar uma cor ou apenas defini-lo como vermelho e então passamos isso para o inicializador quando ele cria esse estilo de cápsula forte.

extension LabelStyle where Self == StrongCapsuleStyle {
	static func strongCapsule(color: Color = .red) -> StrongCapsuleStyle { .init(color: color)}
}
