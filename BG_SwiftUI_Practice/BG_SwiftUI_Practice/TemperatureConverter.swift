//
//  TemperatureConverter.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 08/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct TemperatureConverter: View {

    @State private var celsiusValue: Float = 0.0
    @State private var fahrenheitValue: Float = 32.0

    var body: some View {

        NavigationView {
            VStack {
                Text("Temperature into celsius \(Int(celsiusValue))")

                HStack {
                    Text("0'C")
                    Slider(value: $celsiusValue, in: 0...100) { _ in
                        self.fahrenheitValue = self.convertIntoFahrenheit(from: self.celsiusValue)
                    }
                    Text("100'c")
                }.padding()


                Text("Temperature Value into fahrenheit \(Int(fahrenheitValue))")
                HStack {
                    Text("32'F")
                    Slider(value: $fahrenheitValue, in: 32...212) { _ in
                        self.celsiusValue = self.convertIntoCelsius(from: self.fahrenheitValue)
                    }
                    Text("212'F")
                }.padding()

            }
        }
    }

    private func convertIntoFahrenheit(from celsius: Float) -> Float {
        /// Formula
        /// (0°C × 9/5) + 32 = 32°F

        return (celsius * (9/5)) + 32
    }

    private func convertIntoCelsius(from fahrenheit: Float) -> Float {
        /// Formula
        /// (32°F − 32) × 5/9 = 0°C

        return (fahrenheit - 32 ) * (5 / 9)
    }
}

struct TemperatureConverter_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureConverter()
    }
}
