//
//  ElementsViewController.swift
//  Bench
//
//  Created by Giovanni Lodi on 27/03/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

import UIKit

class ElementsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = elements[indexPath.row]
        return cell
    }
    
    // MARKY - Elements
    // TODO: This is aweful, I know... But we'll look at JSON parsing another time
    let elements = [
        "[H] Hydrogen (1)",
        "[He] Helium (2)",
        "[Li] Lithium (3)",
        "[Be] Beryllium (4)",
        "[B] Boron (5)",
        "[C] Carbon (6)",
        "[N] Nitrogen (7)",
        "[O] Oxygen (8)",
        "[F] Fluorine (9)",
        "[Ne] Neon (10)",
        "[Na] Sodium (11)",
        "[Mg] Magnesium (12)",
        "[Al] Aluminum (13)",
        "[Si] Silicon (14)",
        "[P] Phosphorus (15)",
        "[S] Sulfur (16)",
        "[Cl] Chlorine (17)",
        "[Ar] Argon (18)",
        "[K] Potassium (19)",
        "[Ca] Calcium (20)",
        "[Sc] Scandium (21)",
        "[Ti] Titanium (22)",
        "[V] Vanadium (23)",
        "[Cr] Chromium (24)",
        "[Mn] Manganese (25)",
        "[Fe] Iron (26)",
        "[Co] Cobalt (27)",
        "[Ni] Nickel (28)",
        "[Cu] Copper (29)",
        "[Zn] Zinc (30)",
        "[Ga] Gallium (31)",
        "[Ge] Germanium (32)",
        "[As] Arsenic (33)",
        "[Se] Selenium (34)",
        "[Br] Bromine (35)",
        "[Kr] Krypton (36)",
        "[Rb] Rubidium (37)",
        "[Sr] Strontium (38)",
        "[Y] Yttrium (39)",
        "[Zr] Zirconium (40)",
        "[Nb] Niobium (41)",
        "[Mo] Molybdenum (42)",
        "[Tc] Technetium (43)",
        "[Ru] Ruthenium (44)",
        "[Rh] Rhodium (45)",
        "[Pd] Palladium (46)",
        "[Ag] Silver (47)",
        "[Cd] Cadmium (48)",
        "[In] Indium (49)",
        "[Sn] Tin (50)",
        "[Sb] Antimony (51)",
        "[Te] Tellurium (52)",
        "[I] Iodine (53)",
        "[Xe] Xenon (54)",
        "[Cs] Cesium (55)",
        "[Ba] Barium (56)",
        "[La] Lanthanum (57)",
        "[Ce] Cerium (58)",
        "[Pr] Praseodymium (59)",
        "[Nd] Neodymium (60)",
        "[Pm] Promethium (61)",
        "[Sm] Samarium (62)",
        "[Eu] Europium (63)",
        "[Gd] Gadolinium (64)",
        "[Tb] Terbium (65)",
        "[Dy] Dysprosium (66)",
        "[Ho] Holmium (67)",
        "[Er] Erbium (68)",
        "[Tm] Thulium (69)",
        "[Yb] Ytterbium (70)",
        "[Lu] Lutetium (71)",
        "[Hf] Hafnium (72)",
        "[Ta] Tantalum (73)",
        "[W] Tungsten (74)",
        "[Re] Rhenium (75)",
        "[Os] Osmium (76)",
        "[Ir] Iridium (77)",
        "[Pt] Platinum (78)",
        "[Au] Gold (79)",
        "[Hg] Mercury (80)",
        "[Tl] Thallium (81)",
        "[Pb] Lead (82)",
        "[Bi] Bismuth (83)",
        "[Po] Polonium (84)",
        "[At] Astatine (85)",
        "[Rn] Radon (86)",
        "[Fr] Francium (87)",
        "[Ra] Radium (88)",
        "[Ac] Actinium (89)",
        "[Th] Thorium (90)",
        "[Pa] Protactinium (91)",
        "[U] Uranium (92)",
        "[Np] Neptunium (93)",
        "[Pu] Plutonium (94)",
        "[Am] Americium (95)",
        "[Cm] Curium (96)",
        "[Bk] Berkelium (97)",
        "[Cf] Californium (98)",
        "[Es] Einsteinium (99)",
        "[Fm] Fermium (100)",
        "[Md] Mendelevium (101)",
        "[No] Nobelium (102)",
        "[Lr] Lawrencium (103)",
        "[Rf] Rutherfordium (104)",
        "[Db] Dubnium (105)",
        "[Sg] Seaborgium (106)",
        "[Bh] Bohrium (107)",
        "[Hs] Hassium (108)",
        "[Mt] Meitnerium (109)",
        "[Uun] Ununnilium (110)",
        "[Uuu] Unununium (111)",
        "[Uub] Ununbium (112)",
        "[Uut] Ununtrium (113)",
        "[Uuq] Ununquadium (114)",
        "[Uup] Ununpentium (115)",
        "[Uuh] Ununhexium (116)",
        "[Uus] Ununseptium (117)",
        "[Uuo] Ununoctium (118)",
    ]
}
