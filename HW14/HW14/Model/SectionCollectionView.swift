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
                .myAlbumCell(model: FotoMYAlbum(title: "Недавнее", icon: UIImage(named: "myAlbum1"), countFoto: "13 698")),
                .myAlbumCell(model: FotoMYAlbum(title: "Избранное", icon: UIImage(named: "myAlbum2"), countFoto: "896")),
                .myAlbumCell(model: FotoMYAlbum(title: "Отпуск", icon: UIImage(named: "myAlbum3"), countFoto: "30")),
                .myAlbumCell(model: FotoMYAlbum(title: "Стикеры", icon: UIImage(named: "myAlbum4"), countFoto: "50")),
                .myAlbumCell(model: FotoMYAlbum(title: "Селфи", icon: UIImage(named: "myAlbum5"), countFoto: "6")),
                .myAlbumCell(model: FotoMYAlbum(title: "Работа", icon: UIImage(named: "myAlbum6"), countFoto: "23")),
                .myAlbumCell(model: FotoMYAlbum(title: "Разное", icon: UIImage(named: "myAlbum7"), countFoto: "153")),
                .myAlbumCell(model: FotoMYAlbum(title: "Telegram", icon: UIImage(named: "myAlbum8"), countFoto: "229")),
                .myAlbumCell(model: FotoMYAlbum(title: "WhatsApp", icon: UIImage(named: "myAlbum9"), countFoto: "964")),
                .myAlbumCell(model: FotoMYAlbum(title: "Instagram", icon: UIImage(named: "myAlbum10"), countFoto: "93"))
            ]),
            Section(title: "Общие альбомы", options: [
                .commonAlbumCell(model: FotoCommonAlbums(title: "Все", icon: UIImage(named: "commonAlbum1"), who: "От Вас"))
            ])
        ]
    }
}
