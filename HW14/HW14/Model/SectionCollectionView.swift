//
//  SectionCollectionView.swift
//  HW14
//
//  Created by  Евгений on 10.06.2022.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case myAlbumCell(model: FotoMYAlbum)
    case commonAlbumCell(model: FotoCommonAlbums)
}

struct FotoMYAlbum {
    let title: String
    let icon: UIImage?
    let countFoto: String
}

struct FotoCommonAlbums {
    let title: String
    let icon: UIImage?
    let who: String
}

extension Section {
    static func getSections() -> [Section] {
        return [
            Section(title: "Мои альбомы", options: [
                .myAlbumCell(model: FotoMYAlbum(title: "Недавнее", icon: UIImage(named: "1"), countFoto: "122")),
                .myAlbumCell(model: FotoMYAlbum(title: "Избранное", icon: UIImage(named: "2"), countFoto: "15")),
                .myAlbumCell(model: FotoMYAlbum(title: "Отпуск", icon: UIImage(named: "3"), countFoto: "22")),
                .myAlbumCell(model: FotoMYAlbum(title: "Стикеры", icon: UIImage(named: "4"), countFoto: "111")),
                .myAlbumCell(model: FotoMYAlbum(title: "Работа", icon: UIImage(named: "6"), countFoto: "17")),
                .myAlbumCell(model: FotoMYAlbum(title: "Разное", icon: UIImage(named: "7"), countFoto: "18")),
                .myAlbumCell(model: FotoMYAlbum(title: "Telegram", icon: UIImage(named: "8"), countFoto: "212")),
                .myAlbumCell(model: FotoMYAlbum(title: "WhatsApp", icon: UIImage(named: "9"), countFoto: "189")),
                .myAlbumCell(model: FotoMYAlbum(title: "Instagram", icon: UIImage(named: "10"), countFoto: "132"))
            ]),
            Section(title: "Общие альбомы", options: [
                .commonAlbumCell(model: FotoCommonAlbums(title: "Все", icon: UIImage(named: "11"), who: "От Вас")),
                .commonAlbumCell(model: FotoCommonAlbums(title: "Недавнее", icon: UIImage(named: "12"), who: "От Вас")),
                .commonAlbumCell(model: FotoCommonAlbums(title: "Избранное", icon: UIImage(named: "13"), who: "От Вас")),
                .commonAlbumCell(model: FotoCommonAlbums(title: "Работа", icon: UIImage(named: "14"), who: "От Вас"))

            ])
        ]
    }
}
