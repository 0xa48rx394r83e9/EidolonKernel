// kernel.c
void kernel_main() {
    // Initialize the VGA text buffer
    char* video_memory = (char*) 0xB8000;
    *video_memory = 'H';
    video_memory[1] = 0x07;
    video_memory[2] = 'e';
    video_memory[3] = 0x07;
    video_memory[4] = 'l';
    video_memory[5] = 0x07;
    video_memory[6] = 'l';
    video_memory[7] = 0x07;
    video_memory[8] = 'o';
    video_memory[9] = 0x07;
    video_memory[10] = '!';
    video_memory[11] = 0x07;
}
