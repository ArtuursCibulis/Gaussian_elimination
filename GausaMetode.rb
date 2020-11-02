class Solver

    attr_reader :matrica

    def initialize(matrica)
        @matrica = matrica
    end

    def solve
        puts "Dota matrica:"
        puts matrica
        pirma_darbiba
        otra_darbiba
        tresa_darbiba
        ceturta_darbiba
        piekta_darbiba
        sesta_darbiba
        septita_darbiba
        astota_darbiba
        devita_darbiba
        puts ""
        puts "x1 = #{matrica[0][3].round(4)}"
        puts "x2 = #{matrica[1][3].round(4)}"
        puts "x3 = #{matrica[2][3].round(4)}"
    end
    
    private
    
    def pirma_darbiba
        puts ""
        skaitlis5 = matrica[0][0]
        puts "R1 / #{skaitlis5} → R1"
        matrica[0].map!{ |item| item / skaitlis5 }
        puts matrica
    end
    
    def otra_darbiba
        puts ""
        pretejs_skaitlis = -matrica[1][0]
        puts "R2 + #{pretejs_skaitlis} R1 → R2"
        mainigais2 = matrica[0].map { |item| item * pretejs_skaitlis}
        matrica[1].map!.with_index{ |item, indeks| item + mainigais2[indeks]}
        puts matrica
    end
    
    def tresa_darbiba
        puts ""
        skaitlis = matrica[2][0]
        puts "R3 - #{skaitlis} R1 → R3"
        mainigais3 = matrica[0].map { |item| item * skaitlis}
        matrica[2].map!.with_index{ |item, indeks| item - mainigais3[indeks]}
        puts matrica
    end
    
    def ceturta_darbiba
        puts ""
        skaitlis1 = matrica[1][1]
        puts "R2 / #{skaitlis1} → R2"
        matrica[1].map!{ |item| item / skaitlis1 }
        puts matrica
    end

    def piekta_darbiba
        puts ""
        pretejs_skaitlis2 = -matrica[0][1]
        puts "R1 + #{pretejs_skaitlis2} R2 → R1"
        mainigais4 = matrica[1].map { |item| item * pretejs_skaitlis2 }
        matrica[0].map!.with_index{ |item, indeks| item + mainigais4[indeks]}
        puts matrica
    end

    def sesta_darbiba
        puts ""
        pretejs_skaitlis3 = -matrica[2][1]
        puts "R3 + #{pretejs_skaitlis3} R2 → R3"
        mainigais5 = matrica[1].map { |item| item * pretejs_skaitlis3 }
        matrica[2].map!.with_index{ |item, indeks| item + mainigais5[indeks]}
        puts matrica
    end

    def septita_darbiba
        puts ""
        skaitlis2 = matrica[2][2]
        puts "R3 / #{skaitlis2} → R3"
        matrica[2].map!{ |item| item / skaitlis2 }
        puts matrica
    end

    def astota_darbiba
        puts ""
        skaitlis3 = matrica[0][2]
        puts "R1 - #{skaitlis3} R3 → R1"
        mainigais6 = matrica[2].map { |item| item * skaitlis3 }
        matrica[0].map!.with_index{ |item, indeks| item - mainigais6[indeks] }
        puts matrica
    end

    def devita_darbiba
        puts ""
        skaitlis4 = matrica[1][2]
        puts "R2 - #{skaitlis4} R3 → R2"
        mainigais7 = matrica[2].map { |item| item * skaitlis4 }
        matrica[1].map!.with_index{ |item, indeks| item - mainigais7[indeks] }
        puts matrica
    end
end

matrica = Solver.new([[1.14, -2.15, -5.11, -4.16], 
                      [-0.71, 0.81, -0.02, -0.17], 
                       [0.42, -1.13, 7.05, 6.15]])

matrica.solve
