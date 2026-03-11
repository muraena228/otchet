rule(char, char):
        push    rbp
        mov     rbp, rsp
        mov     edx, edi
        mov     eax, esi
        mov     BYTE PTR [rbp-4], dl
        mov     BYTE PTR [rbp-8], al
        movzx   eax, BYTE PTR [rbp-4]
        cmp     al, BYTE PTR [rbp-8]
        jne     .L2
        mov     eax, 0
        jmp     .L3
.L2:
        cmp     BYTE PTR [rbp-4], 114
        jne     .L4
        cmp     BYTE PTR [rbp-8], 112
        jne     .L4
        mov     eax, -1
        jmp     .L3
.L4:
        cmp     BYTE PTR [rbp-4], 114
        jne     .L5
        cmp     BYTE PTR [rbp-8], 115
        jne     .L5
        mov     eax, 1
        jmp     .L3
.L5:
        cmp     BYTE PTR [rbp-4], 112
        jne     .L6
        cmp     BYTE PTR [rbp-8], 114
        jne     .L6
        mov     eax, 1
        jmp     .L3
.L6:
        cmp     BYTE PTR [rbp-4], 112
        jne     .L7
        cmp     BYTE PTR [rbp-8], 115
        jne     .L7
        mov     eax, -1
        jmp     .L3
.L7:
        cmp     BYTE PTR [rbp-4], 115
        jne     .L8
        cmp     BYTE PTR [rbp-8], 112
        jne     .L8
        mov     eax, 1
        jmp     .L3
.L8:
        cmp     BYTE PTR [rbp-4], 115
        jne     .L9
        cmp     BYTE PTR [rbp-8], 114
        jne     .L9
        mov     eax, -1
        jmp     .L3
.L9:
        mov     eax, 0
.L3:
        pop     rbp
        ret
.LC0:
        .string "\t\t\t\t"
.LC1:
        .string "-"
.LC2:
        .string "\t Welcome to Rock, Paper and Scissors Game"
.LC3:
        .string "\t Note: "
.LC4:
        .string "\t\t r : Rock"
.LC5:
        .string "\t\t p : Paper"
.LC6:
        .string "\t\t s : Scissors"
.LC7:
        .string "Enter your choice (r/p/s): "
.LC8:
        .string "You won! Hurray"
.LC9:
        .string "You lose! Bad Luck"
.LC10:
        .string "Woah! That's Tie!"
.LC11:
        .string "Do you want to Play Again?"
.LC12:
        .string "Note: Press 'n' to exit! Press Anything to continue: "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     DWORD PTR [rbp-8], 0
        jmp     .L11    
.L12:
        mov     esi, OFFSET FLAT:.LC1
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        add     DWORD PTR [rbp-8], 1
.L11:
        cmp     DWORD PTR [rbp-8], 49
        jle     .L12
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     edi, OFFSET FLAT:std::cout
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC2
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     DWORD PTR [rbp-12], 0
        jmp     .L13
.L14:
        mov     esi, OFFSET FLAT:.LC1
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        add     DWORD PTR [rbp-12], 1
.L13:
        cmp     DWORD PTR [rbp-12], 49
        jle     .L14
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     edi, OFFSET FLAT:std::cout
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC3
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC4
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC5
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC6
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     DWORD PTR [rbp-16], 0
        jmp     .L15
.L16:
        mov     esi, OFFSET FLAT:.LC1
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        add     DWORD PTR [rbp-16], 1
.L15:
        cmp     DWORD PTR [rbp-16], 49
        jle     .L16
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     edi, OFFSET FLAT:std::cout
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
.L25:
        mov     DWORD PTR [rbp-24], 0
        mov     edi, 0
        call    time
        mov     edi, eax
        call    srand
        call    rand
        movsx   rdx, eax
        imul    rdx, rdx, 1374389535
        shr     rdx, 32
        sar     edx, 5
        mov     ecx, eax
        sar     ecx, 31
        sub     edx, ecx
        mov     DWORD PTR [rbp-24], edx
        mov     edx, DWORD PTR [rbp-24]
        imul    edx, edx, 100
        sub     eax, edx
        mov     DWORD PTR [rbp-24], eax
        cmp     DWORD PTR [rbp-24], 32
        jg      .L17
        mov     BYTE PTR [rbp-1], 114
        jmp     .L18
.L17:
        cmp     DWORD PTR [rbp-24], 66
        jle     .L19
        mov     BYTE PTR [rbp-1], 115
        jmp     .L18
.L19:
        mov     BYTE PTR [rbp-1], 112
.L18:
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC7
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        lea     rax, [rbp-29]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:std::cin
        call    std::basic_istream<char, std::char_traits<char>>& std::operator>><char, std::char_traits<char>>(std::basic_istream<char, std::char_traits<char>>&, char&)
        movzx   eax, BYTE PTR [rbp-29]
        movsx   eax, al
        mov     edi, eax
        call    tolower
        mov     BYTE PTR [rbp-29], al
        movsx   edx, BYTE PTR [rbp-1]
        movzx   eax, BYTE PTR [rbp-29]
        movsx   eax, al
        mov     esi, edx
        mov     edi, eax
        call    rule(char, char)
        mov     DWORD PTR [rbp-28], eax
        cmp     DWORD PTR [rbp-28], 1
        jne     .L20
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC8
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        jmp     .L21
.L20:
        cmp     DWORD PTR [rbp-28], -1
        jne     .L22
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC9
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        jmp     .L21
.L22:
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC10
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
.L21:
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC11
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     rdi, rax
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     esi, OFFSET FLAT:.LC12
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        lea     rax, [rbp-30]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:std::cin
        call    std::basic_istream<char, std::char_traits<char>>& std::operator>><char, std::char_traits<char>>(std::basic_istream<char, std::char_traits<char>>&, char&)
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        mov     DWORD PTR [rbp-20], 0
        jmp     .L23
.L24:
        mov     esi, OFFSET FLAT:.LC1
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        add     DWORD PTR [rbp-20], 1
.L23:
        cmp     DWORD PTR [rbp-20], 49
        jle     .L24
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char>>& std::endl<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&)
        mov     edi, OFFSET FLAT:std::cout
        call    std::ostream::operator<<(std::ostream& (*)(std::ostream&))
        movzx   eax, BYTE PTR [rbp-30]
        cmp     al, 110
        jne     .L25
        mov     eax, 0
        leave
        ret