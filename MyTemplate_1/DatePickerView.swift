//
//  DatePickerView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct DatePickerView: View {
    @State private var nextFullMoonDate = Date()
    @State private var currentMoonDate = Date()
    @State private var dateInForm = Date()
    let fromToday = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!
    let mainColor = Color(.green)
    var body: some View {
        Form{
            Section(header: Text("날짜 선택기")
                .font(.largeTitle).padding()){
                    DatePicker("예약 날짜", selection: $dateInForm, displayedComponents: .date)
                }
        }
        VStack(spacing: 20) {
            DatePicker("", selection: $currentMoonDate, in: fromToday..., displayedComponents: .date)
                .padding(.horizontal, 28)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(mainColor)
                .padding(.horizontal)
                
        }
        .font(.title)
        VStack(spacing: 20) {
            Text("날짜 선택기")
                .font(.largeTitle)
                .bold()
            
            DatePicker("다음 달을 선택", selection: $nextFullMoonDate, displayedComponents: .date)
                .padding(.horizontal)
            
            VStack(spacing: 5) {
                Text("이번 달과 시간 선택")
                    .font(.title)
                DatePicker("선택", selection: $currentMoonDate, displayedComponents: [.date, .hourAndMinute])
                    .padding(.horizontal)
            }
        }
        .padding()
    }
}

#Preview {
    DatePickerView()
}
